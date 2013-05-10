require 'rspec'
require_relative '../config/application'

describe "makes a database" do

  it "should have made a database" do
    ActiveRecord::Base.connection.table_exists?(:tasks).should be_true
  end

  it "should have the right columns and types" do
    expected = {
      :integer => ["id"],
      :text => ["todo"],
      :boolean => ["completed"],
      :datetime => ["completed_at","created_at", "updated_at"]
    }
    ActiveRecord::Base.connection.columns(:tasks).each do |col|
      expected[col.type].include?(col.name).should be_true
    end
  end
end
