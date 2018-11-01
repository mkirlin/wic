class AdminController < ApplicationController
  def csv_export
    respond_to do |format|
      format.csv { render csv: User.all.to_a }
    end
  end
end
