# class
class DoctorsController < ApplicationController
  def index
       @doctors=Doctor.all
     @doctar = Doctor.new
  end
    

  def create

     @doctar = Doctor.new(doc_params)
     @doctar.save
  end

 def show
  
    @person = Person.find(params[:format ])
    send_data @person.image, :type => 'image/png',:disposition => 'inline'
  

  # @data_img= send_data Person.first.image,:type=>"image/jpg",:disposition=>'inline'
 end

  private

  def doc_params
    params.require(:doctor).permit!
  end
end

