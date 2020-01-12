class EntriesController < ApplicationController
  before_action :find_entry, only: [:show, :edit, :update, :destroy]

  def index
  	@entries = Entry.all.order(created_at: :desc)
  end

  def new
  	@entry = Entry.new
  end	

  def show
  end

  def create
  	Entry.create(entry_params)
  	redirect_to entries_path
  end

  def edit
  end	

  def update

   	@entry.update(entry_params)
   	#entry.title = entry_params[:title]
   	#entry.content = entry_params[:content]
   	#entry.save
   	redirect_to entry_path(@entry)

  end	

  def destroy
  	@entry.destroy
  	redirect_to entries_path
  end	

  private

  def entry_params
  	params.require(:entry).permit(:title, :content)
  end	

  def find_entry
  	@entry = Entry.find(params[:id])
  end	


end
