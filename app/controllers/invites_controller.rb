class InvitesController < ApplicationController
  def new
    @invite = Invite.new
  end

  def create
    @invite = Invite.new(params[:invite])

    if @invite.save
      redirect_to root_path, :notice => "Thanks for your interest #{@invite.email}.  You will hear from us soon."
    else
      render :action => "new"
    end
  end

end
