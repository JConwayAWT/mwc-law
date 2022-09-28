class ApplicationMailer < ActionMailer::Base
  default from: "mwc.law.no.reply@gmail.com"

  @@default_to = ENV["MWC_APPLICATION_MAILER_DEFAULT_TO_EMAIL_ADDRESS"]

  def new_employment_application(application_id)
    @app = EmploymentApplication.find(application_id)

    if @app.resume.exists?
      attachments[@app.resume.instance.resume_file_name] = File.read(@app.resume.path)
    end

    mail(to: @@default_to, subject: "[mwc-law.com] New Employment Application")
  end

  def ftp_credentials_revoked(ip, un, pw)
    @ip = ip
    @un = un
    @pw = pw
    addresses = ["lincsit@mwc-law.com", "conwayje@gmail.com"]
    mail(to: addresses, subject: "[mwc-law.com] FTP Credentials Revoked")
  end

  def ftp_file_missing(fname)
    @fname = fname
    addresses = ["lincsit@mwc-law.com", "conwayje@gmail.com"]
    mail(to: addresses, subject: "[mwc-law.com] FTP File Missing")
  end
end
