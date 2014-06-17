require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Masterbet_app') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Tips page" do
    before { visit tips_path }

    it { should have_selector('h1',    text: 'tips') }
    it { should have_selector('title', text: full_title('Προγνωστικά')) }
  end

  describe "Results page" do
    before { visit results_path }

    it { should have_selector('h1',    text: 'Αποτελέσματα') }
    it { should have_selector('title', text: full_title('Αποτελέσματα')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Επικονωνία') }
    it { should have_selector('title', text: full_title('Επικοινωνία')) }
  end

  describe "Galery page" do
    before { visit galery_path }

    it { should have_selector('h1',    text: 'Εικόνες') }
    it { should have_selector('title', text: full_title('Εικόνες')) }
  end
end