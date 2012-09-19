module YmBadges::BadgesController
  
  def self.included(base)
    base.load_and_authorize_resource
  end
  
  def create
    if @badge.save
      flash_notice(@badge)
      redirect_to badges_path
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @badge.destroy
    flash_notice(@badge)
    redirect_to badges_path
  end
  
  def edit
  end

  def index
  end
  
  def new
  end  
  
  def update
    if @badge.update_attributes(params[:badge])
      flash_notice
      redirect_to badges_path
    else
      render :action => 'edit'
    end
  end
  
end