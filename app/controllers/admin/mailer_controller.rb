class Admin::MailerController < AdminController

  def show
    @ex_groups = ExerciseGroup.all
  end

  def create
    users = User.with_email

    #ex_group = ExerciseGroup.find(params[:exercise_group])
    #registrations_in_this_group = Registration.find(:all,
    #      :conditions [ "exercise_group_id = ?", ex_group])

    #registrations_in_this_group.each do |u|

    users.each do |u|
      UserMailer.deliver_admin_mail(u, params[:subject], params[:body])
    end

    render :text => "Message send successfully"
    
  end

end
