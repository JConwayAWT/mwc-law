class ApplicationMailer < ActionMailer::Base
  default from: "mwc.law.no.reply@gmail.com"

  @@dev_address = "conwayje@gmail.com"
  @@careers_address = "pschab@mwc-law.com"

  def new_employment_application(application_id)
    @app = EmploymentApplication.find(application_id)

    if @app.resume.exists?
      attachments[@app.resume.instance.resume_file_name] = File.read(@app.resume.path)
    end

    if Rails.env == "development"
      mail(to: @@dev_address, subject: "[mwc-law.com] New Employment Application")
    else
      mail(to: @@careers_address, subject: "[mwc-law.com] New Employment Application")
    end
  end

  def ftp_credentials_revoked(ip, un, pw)
    @ip = ip
    @un = un
    @pw = pw
    addresses = ["rconway@mwc-law.com", "conwayje@gmail.com"]
    mail(to: addresses, subject: "[mwc-law.com] FTP Credentials Revoked")
  end

  def ftp_file_missing(fname)
    @fname = fname
    addresses = ["rconway@mwc-law.com", "conwayje@gmail.com"]
    mail(to: addresses, subject: "[mwc-law.com] FTP File Missing")
  end
end
