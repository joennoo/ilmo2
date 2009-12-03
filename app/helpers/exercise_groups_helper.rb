module ExerciseGroupsHelper

  def registered?(given_user, given_group)
    given_group.registrations.each do |registration|
      return true if registration.user.id == given_user.id
    end
    false
  end

end
