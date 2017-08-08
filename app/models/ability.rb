class Ability #defining user permissions with the Ability class
  include CanCan::Ability

  def initialize(user) # The initialize method takes in a user object as a parameter, so permissions can be modified based on any user attributes.
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
  end   
  #:manage is the action to the argument can. :manage matches any action on the User controller, meaning any user can manage (perform any action) with a User object. The second parameter is the restriction, meaning that the user must have the same ID as his or her user record does (i.e., users can manage themselves).
end
