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
    ftp = Net::FTP.new(ENV["MWC_FTP_IP_ADDRESS"])
    if ftp.login(ENV["MWC_FTP_USERNAME"], ENV["MWC_FTP_PASSWORD"])
      #do things
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