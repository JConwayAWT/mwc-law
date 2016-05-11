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
      begin
        ftp.login(ENV["MWC_FTP_USERNAME"], ENV["MWC_FTP_PASSWORD"])
        ftp.chdir("htdocs")
        ftp.chdir("lists")
        SaleList.all.each do |sale_list|
          begin
            mwc_html = ftp.gettextfile(sale_list.mwc_file_name, nil).encode('UTF-8', :invalid => :replace, :undef => :replace)
          rescue
            puts "Something went wrong with #{sale_list.mwc_file_name}"
            puts $!.message
            ApplicationMailer.ftp_file_missing(sale_list.mwc_file_name).deliver!
          end
          sale_list.mwc_html = mwc_html
          print "Pre-saved #{sale_list.mwc_file_name}... "
          sale_list.save!
          puts "Saved #{sale_list.mwc_file_name}"
        end
      rescue
        puts "Something went wrong while logging in."
        puts $!.message
        debugger
        ApplicationMailer.ftp_credentials_revoked(ENV["MWC_FTP_IP_ADDRESS"], ENV["MWC_FTP_USERNAME"], ENV["MWC_FTP_PASSWORD"]).deliver!
      end
    end
  end
end