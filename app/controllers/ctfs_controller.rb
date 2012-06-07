class CtfsController < ApplicationController
  def new
    @ctf = Ctf.new
  end

  def create
    @ctf = Ctf.new(params[:ctf])
    # TODO don't link this at all
    start_at, end_at = params[:ctf][:start_at], params[:ctf][:start_at]
    format = "%m/%d/%Y %H:%M"
    @ctf.start_at = DateTime.strptime(start_at, format) if start_at
    @ctf.end_at = DateTime.strptime(end_at, format) if end_at
    if @ctf.save
      5.times do |i|
        category = Category.create(ctf_id: @ctf.id, name: "Untitled")
        5.times do |j|
          challenge = Challenge.create(category_id: category.id, points: (j+1) * 100, status: "closed")
        end
      end
      return redirect_to @ctf,
        notice: "Added #{@ctf.name} to CTF list."
    else
      flash.now.alert = "Problem adding #{@ctf.name} to CTF list."
      return render "new"
    end
  end

  def show
    @ctf = Ctf.find(params[:id])
  end
end
