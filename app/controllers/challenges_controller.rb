class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
  end

  def update
    @challenge = Challenge.find(params[:id])
    status = params[:status]
    if status && ["closed", "open", "done"].index(status)
      @challenge.status = status
      if @challenge.save
        return redirect_to @challenge,
          notice: "#{@challenge.category.name} #{@challenge.points}'s status updated to #{status}"
      else
        flash.now.alert = "Status of #{@challenge.category.name} #{@challenge.points} not updated"
        return render "show"
      end
    end
    respond_to do |format|
      if @challenge.update_attributes(params[:challenge])
        format.json { respond_with_bip(@challenge) }
      else
        format.json { respond_with_bip(@challenge) }
      end
    end
  end
end
