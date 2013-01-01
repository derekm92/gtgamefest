class PlayersController < ApplicationController
  layout 'admin'
  
  def index #by default render the list
    list
    render('list')
  end
  
  def list
    @players = Player.order("Players.created_at ASC")
    #@players = Player
  end
  
  def show
    @player = Player.find(params[:id])
  end
  
  def new
    @player = Player.new
  end
  
  def create
    # Instantiate a new object using form parameters
    @player = Player.new(params[:player])
    # Save the Player
    if @player.save
      # If save succeeds, redirect to the list action
      flash[:notice] = "Player created."
      redirect_to(:action => 'list')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end
  
  def edit
    @player = Player.find(params[:id])
  end
  
  def update
      # find object using form parameters
     @player = Player.find(params[:id])
      # Update the Player
      if @player.update_attributes(params[:player])
        # If update succeeds, redirect to the list action
        flash[:notice] = "Player updated."
        redirect_to(:action => 'show', :id => @player.id)
      else
        # If save fails, redisplay the form so user can fix problems
        render('edit')
      end
  end
  
  def delete
    @player = Player.find(params[:id])
  end
  
  def destroy
    player = Player.find(params[:id])
    player.destroy
    flash[:notice] = "Player destroyed."
    redirect_to(:action => 'list')
  end
  
end
