class JobsController < ApplicationController
  def index
    @q = Job.ransack(params[:q])
    @jobs = @q.result
    @jobs = @jobs.order('created_at DESC').page(params[:page]).per(15)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def edit
    @job = Job.find(params[:id])
    calculate_test_quantities
    calculate_imbalance
    calculate_prismatic_power
    create_script
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:success] = 'Lot was successfully created.'
      redirect_to edit_job_path(@job)
    else
      flash[:danger] = 'There was a problem creating the Lot.'
      render 'new'
    end
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      if params[:commit] == "Testing Complete"
        @job.lot_complete = "Complete"
        @job.save
        flash[:success] = 'Test data successfully saved.'
        redirect_to jobs_path
      elsif params[:commit] == "Save Progress"
        flash[:success] = 'Test data successfully saved.'
        redirect_to edit_job_path(@job)
      else
        flash[:success] = "Lot successfully updated."
        redirect_to @job
      end
    else
      flash[:danger] = 'There was a problem updating the Lot.'
      render 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:success] = "Lot #{@job.id} deleted."
    redirect_to jobs_path
  end

  def calculate_test_quantities
    if @job.lot_quantity <= 4500
      @quantity_t1 = 3
      @quantity_t2 = 4
      @quantity_t3 = 6
      @quantity_t4 = 10
    else
      @quantity_t1 = (@job.lot_quantity / 1500.to_f).ceil
      @quantity_t2 = (@job.lot_quantity / 1125.to_f).ceil
      @quantity_t3 = (@job.lot_quantity / 750.to_f).ceil
      @quantity_t4 = (@job.lot_quantity / 450.to_f).ceil
    end
  end

  def calculate_imbalance
     = (@job.horizontal_left_1 - @job.horizontal_right_1).round(3) if !(@job.horizontal_left_1.nil? || @job.horizontal_right_1.nil?)
    @job.horizontal_imbalance_2 = (@job.horizontal_left_2 - @job.horizontal_right_2).round(3) if !(@job.horizontal_left_2.nil? || @job.horizontal_right_2.nil?)
    @job.horizontal_imbalance_3 = (@job.horizontal_left_3 - @job.horizontal_right_3).round(3) if !(@job.horizontal_left_3.nil? || @job.horizontal_right_3.nil?)
    @job.horizontal_imbalance_4 = (@job.horizontal_left_4 - @job.horizontal_right_4).round(3) if !(@job.horizontal_left_4.nil? || @job.horizontal_right_4.nil?)
    @job.horizontal_imbalance_5 = (@job.horizontal_left_5 - @job.horizontal_right_5).round(3) if !(@job.horizontal_left_5.nil? || @job.horizontal_right_5.nil?)
    @job.horizontal_imbalance_6 = (@job.horizontal_left_6 - @job.horizontal_right_6).round(3) if !(@job.horizontal_left_6.nil? || @job.horizontal_right_6.nil?)

    @job.vertical_imbalance_1 = (@job.vertical_left_1 - @job.vertical_right_1).round(3).abs if !(@job.vertical_left_1.nil? || @job.vertical_right_1.nil?)
    @job.vertical_imbalance_2 = (@job.vertical_left_2 - @job.vertical_right_2).round(3).abs if !(@job.vertical_left_2.nil? || @job.vertical_right_2.nil?)
    @job.vertical_imbalance_3 = (@job.vertical_left_3 - @job.vertical_right_3).round(3).abs if !(@job.vertical_left_3.nil? || @job.vertical_right_3.nil?)
    @job.vertical_imbalance_4 = (@job.vertical_left_4 - @job.vertical_right_4).round(3).abs if !(@job.vertical_left_4.nil? || @job.vertical_right_4.nil?)
    @job.vertical_imbalance_5 = (@job.vertical_left_5 - @job.vertical_right_5).round(3).abs if !(@job.vertical_left_5.nil? || @job.vertical_right_5.nil?)
    @job.vertical_imbalance_6 = (@job.vertical_left_6 - @job.vertical_right_6).round(3).abs if !(@job.vertical_left_6.nil? || @job.vertical_right_6.nil?)
  end

  def calculate_prismatic_power
    @job.prismatic_power_left_1 = ((@job.horizontal_left_1 ** 2 + @job.vertical_left_1 ** 2) ** (0.5)).round(3) if !(@job.horizontal_left_1.nil? || @job.vertical_left_1.nil?)
    @job.prismatic_power_left_2 = ((@job.horizontal_left_2 ** 2 + @job.vertical_left_2 ** 2) ** (0.5)).round(3) if !(@job.horizontal_left_2.nil? || @job.vertical_left_2.nil?)
    @job.prismatic_power_left_3 = ((@job.horizontal_left_3 ** 2 + @job.vertical_left_3 ** 2) ** (0.5)).round(3) if !(@job.horizontal_left_3.nil? || @job.vertical_left_3.nil?)
    @job.prismatic_power_left_4 = ((@job.horizontal_left_4 ** 2 + @job.vertical_left_4 ** 2) ** (0.5)).round(3) if !(@job.horizontal_left_4.nil? || @job.vertical_left_4.nil?)
    @job.prismatic_power_left_5 = ((@job.horizontal_left_5 ** 2 + @job.vertical_left_5 ** 2) ** (0.5)).round(3) if !(@job.horizontal_left_5.nil? || @job.vertical_left_5.nil?)
    @job.prismatic_power_left_6 = ((@job.horizontal_left_6 ** 2 + @job.vertical_left_6 ** 2) ** (0.5)).round(3) if !(@job.horizontal_left_6.nil? || @job.vertical_left_6.nil?)

    @job.prismatic_power_right_1 = ((@job.horizontal_right_1 ** 2 + @job.vertical_right_1 ** 2) ** (0.5)).round(3) if !(@job.horizontal_right_1.nil? || @job.vertical_right_1.nil?)
    @job.prismatic_power_right_2 = ((@job.horizontal_right_2 ** 2 + @job.vertical_right_2 ** 2) ** (0.5)).round(3) if !(@job.horizontal_right_2.nil? || @job.vertical_right_2.nil?)
    @job.prismatic_power_right_3 = ((@job.horizontal_right_3 ** 2 + @job.vertical_right_3 ** 2) ** (0.5)).round(3) if !(@job.horizontal_right_3.nil? || @job.vertical_right_3.nil?)
    @job.prismatic_power_right_4 = ((@job.horizontal_right_4 ** 2 + @job.vertical_right_4 ** 2) ** (0.5)).round(3) if !(@job.horizontal_right_4.nil? || @job.vertical_right_4.nil?)
    @job.prismatic_power_right_5 = ((@job.horizontal_right_5 ** 2 + @job.vertical_right_5 ** 2) ** (0.5)).round(3) if !(@job.horizontal_right_5.nil? || @job.vertical_right_5.nil?)
    @job.prismatic_power_right_6 = ((@job.horizontal_right_6 ** 2 + @job.vertical_right_6 ** 2) ** (0.5)).round(3) if !(@job.horizontal_right_6.nil? || @job.vertical_right_6.nil?)
  end

  def create_script
    time_stamp = Time.now.strftime("%Y%m%d")
    @folder_name = "#{time_stamp} #{@job.part.description} - "
    @job.id[0] == "P" ? @folder_name = @folder_name + @job.id : @folder_name = @folder_name + "WV #{@job.id}"
    @job.line ? @folder_name = @folder_name + " Part #{@job.line}.vbs" : @folder_name = @folder_name + ".vbs"

    File.delete(Rails.root.join("public", "Initialize.vbs")) if File.exist?(Rails.root.join("public", "Initialize.vbs"))
    File.open(Rails.root.join("public", "Initialize.vbs"), 'w') do |f|
      f.write(
'TestFolderName = Trim(Split(Left("'+ @folder_name +'", Len("'+ @folder_name +'")-4),"(")(0))
TestQuantity = ' + @quantity_t2.to_s + '

If InStr(TestFolderName, "WV") Then
WV = Mid(TestFolderName, InStr(TestFolderName, "WV"))
Else
WV = Mid(TestFolderName, InStr(TestFolderName, "PV"))
End If

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.GetFolder("V:\QC Vermont\Incoming Lens Inspection")
Set subfolders = objFolder.subfolders
TestFolderPath = "V:\QC Vermont\Incoming Lens Inspection\" & TestFolderName

For Each subfolder In subfolders
If InStr(subfolder, WV) > 0 Then
    MsgBox "A folder for " & WV & " already exists."
    Wscript.Quit
End If
Next

objFSO.copyFolder "V:\QC Vermont\Incoming Lens Inspection\Lens Testing Template", TestFolderPath

objFSO.MoveFile TestFolderPath & "\Optics.xlsm", TestFolderPath & "\Optics - " & WV & ".xlsm"
objFSO.MoveFile TestFolderPath & "\Fog.xlsm", TestFolderPath & "\Fog - " & WV & ".xlsm"
objFSO.MoveFile TestFolderPath & "\Ballistics.xlsm", TestFolderPath & "\Ballistics - " & WV & ".xlsm"

If TestQuantity > 4 Then
For i = 5 to TestQuantity
  objFSO.CreateFolder(TestFolderPath & "\Fog " & CStr(i))
Next
End If


Dim shell
Set shell = wscript.CreateObject("Shell.Application")
shell.Open TestFolderPath
Wscript.Quit'
)

    f.close
  end
end

  private
    def job_params
      params.require(:job).permit!
    end
end
