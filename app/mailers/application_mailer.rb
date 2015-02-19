class ApplicationMailer < ActionMailer::Base
  default from: "mwc.law.no.reply@gmail.com"

  @@dev_address = "conwayje@gmail.com"
  @@careers_address = "conwayje@gmail.com"

  def new_employment_application(application_id)
    @app = EmploymentApplication.find(application_id)

    debugger 

    if @app.resume.exists?
      attachments[@app.resume.instance.resume_file_name] = File.read(@app.resume.path)
    end

    if Rails.env == "development"
      mail(to: @@dev_address, subject: "[mwc-law.com] New Employment Application")
    else
      mail(to: @@careers_address, subject: "[mwc-law.com] New Employment Application")
    end
  end
end
