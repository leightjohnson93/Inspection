class AddTransmittanceFields < ActiveRecord::Migration[5.2]
  def change
    (1..6).each do |n|
      add_column :jobs, "d65_photopic_#{n}", :float
      add_column :jobs, "d65_scotopic_#{n}", :float
      add_column :jobs, "p43_photopic_#{n}", :float
      add_column :jobs, "p43_scotopic_#{n}", :float
      add_column :jobs, "a_photpic_#{n}", :float
      add_column :jobs, "a_scotopic_#{n}", :float
      add_column :jobs, "c_photopic_#{n}", :float
      add_column :jobs, "c_scotopic_#{n}", :float
      add_column :jobs, "en1836_650_#{n}", :float
      add_column :jobs, "d65_x_#{n}", :float
      add_column :jobs, "d65_y_#{n}", :float
      add_column :jobs, "Jr_#{n}", :float
      add_column :jobs, "Tred_#{n}", :float
      add_column :jobs, "Tyellow_#{n}", :float
      add_column :jobs, "Tgreen_#{n}", :float
      add_column :jobs, "Tblue_#{n}", :float
      add_column :jobs, "Qred_#{n}", :float
      add_column :jobs, "Qyellow_#{n}", :float
      add_column :jobs, "Qgreen_#{n}", :float
      add_column :jobs, "Qblue_#{n}", :float
      add_column :jobs, "x_green_#{n}", :float
      add_column :jobs, "y_green_#{n}", :float
      add_column :jobs, "x_yellow_#{n}", :float
      add_column :jobs, "y_yellow_#{n}", :float
      add_column :jobs, "en170_313_#{n}", :float
      add_column :jobs, "en170_365_#{n}", :float
      add_column :jobs, "en170_405_#{n}", :float
      add_column :jobs, "csa_efuv_#{n}", :float
      add_column :jobs, "csa_nuv_#{n}", :float
      add_column :jobs, "en172_315_#{n}", :float
      add_column :jobs, "en172_350_#{n}", :float
      add_column :jobs, "en172_380_#{n}", :float
    end
  end
end
