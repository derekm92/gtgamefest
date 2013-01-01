class DemoController < ApplicationController
  layout 'admin'
  def index
    #render('demo/hello')
    #redirect_to(:action => 'other_hello')
  end
  
  def hello
    @array = [1,2,3,4,5]
    @id = params[:id].to_i
    @page = params[:page].to_i
  end
  
  def other_hello
    render(:text => 'Hello everyone!')
  end
  
  def text_helpers
  end
end
