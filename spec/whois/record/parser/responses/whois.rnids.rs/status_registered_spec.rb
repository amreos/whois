# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.rnids.rs/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.rnids.rs.rb'

describe Whois::Record::Parser::WhoisRnidsRs, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.rnids.rs/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      lambda { @parser.disclaimer }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "google.rs"
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2008-03-10 12:31:19")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2012-02-28 04:30:05")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2013-03-10 12:31:19")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(Whois::Record::Registrar)
      @parser.registrar.id.should           == nil
      @parser.registrar.name.should         == "NINET Company d.o.o."
      @parser.registrar.organization.should == nil
      @parser.registrar.url.should          == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == nil
      @parser.registrant_contacts[0].name.should          == "Google Inc."
      @parser.registrant_contacts[0].address.should       == "1600 Amphitheatre Parkway, Mountain View, United States of America"
      @parser.registrant_contacts[0].email.should         == nil
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(Whois::Record::Contact)
      @parser.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should            == nil
      @parser.admin_contacts[0].name.should          == "Domain Administrator, Drustvo za marketing Google DOO"
      @parser.admin_contacts[0].address.should       == "Marsala Birjuzova 47/18, Beograd, Serbia"
      @parser.admin_contacts[0].email.should         == nil
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should            == nil
      @parser.technical_contacts[0].name.should          == "Domain Provisioning, MarkMonitor"
      @parser.technical_contacts[0].address.should       == "10400 Overland Road, Boise, United States of America"
      @parser.technical_contacts[0].email.should         == nil
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "ns1.google.com"
      @parser.nameservers[0].ipv4.should == nil
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "ns2.google.com"
      @parser.nameservers[1].ipv4.should == nil
      @parser.nameservers[2].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[2].name.should == "ns3.google.com"
      @parser.nameservers[2].ipv4.should == "216.239.36.10"
      @parser.nameservers[3].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[3].name.should == "ns4.google.com"
      @parser.nameservers[3].ipv4.should == "216.239.38.10"
    end
  end
end