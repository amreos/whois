#
# = Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
#
# Category::    Net
# Package::     Whois
# Author::      Simone Carletti <weppos@weppos.net>
# License::     MIT License
#
#--
#
#++


require 'whois/answer/parser/base'


module Whois
  class Answer
    class Parser

      #
      # = whois.coza.net.za parser
      #
      # Parser for the whois.coza.net.za server.
      #
      class WhoisCozaNetZa < Base

        property_not_supported :disclaimer


        property_not_supported :domain

        property_not_supported :domain_id


        property_not_supported :referral_whois

        property_not_supported :referral_url


        property_supported :status do
          if available?
            :available
          else
            :registered
          end
        end

        property_supported :available? do
           content_for_scanner.strip == "Available"
        end

        property_supported :registered? do
          !available?
        end


        property_not_supported :created_on

        property_not_supported :updated_on

        property_not_supported :expires_on


        property_not_supported :registrar


        property_not_supported :registrant_contact

        property_not_supported :admin_contact

        property_not_supported :technical_contact


        property_not_supported :nameservers

      end

    end
  end
end