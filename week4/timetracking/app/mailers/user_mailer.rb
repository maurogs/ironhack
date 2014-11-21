class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_entry(project)
  	@project = project

  	mail(to: 'mauro_gs@hotmail.com', 
  		subject: "New entry created in project #{project.name}")
  end
end
