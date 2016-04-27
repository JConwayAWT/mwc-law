namespace :lists do
  # example
  # desc "Check each user for available studies (should run daily)"
  # task match: :environment do
  #   puts "Matching users to studies..."
  #   User.match_users_to_studies
  #   puts "Finished."
  # end

  desc "Update lists from FTP server"
  task update: :environment do
    require 'net/ftp'
    Net::FTP.open(ENV["MWC_FTP_IP_ADDRESS"]) do |ftp|
      ftp.passive = true
      logged_in = ftp.login(ENV["MWC_FTP_USERNAME"], ENV["MWC_FTP_PASSWORD"])
      if logged_in
        ftp.chdir("htdocs")
        ftp.chdir("lists")
        SaleList.all.each do |sale_list|
          begin
            mwc_html = ftp.gettextfile(sale_list.mwc_file_name, nil)
          rescue
            ApplicationMailer.ftp_file_missing(sale_list.mwc_file_name).deliver!
          end
          sale_list.mwc_html = mwc_html
          sale_list.save!
          puts "Updated #{sale_list.mwc_file_name}"
        end
      else
        ApplicationMailer.ftp_credentials_revoked(ENV["MWC_FTP_IP_ADDRESS"], ENV["MWC_FTP_USERNAME"], ENV["MWC_FTP_PASSWORD"]).deliver!
      end
    end
  end

  task :cron => :environment do
      Dir.chdir("tmp") do
        Net::FTP.open("ftp.example.com") do |ftp|
          ftp.passive = true
          ftp.login('login', 'password')
          ftp.chdir("your_dir")
          ftp.get("your_file")
          # ... Load the files in the database here
        end
      end
    end

  
end