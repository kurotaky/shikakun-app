require 'spec_helper'

describe 'shikakun.rb' do
  it "get root" do
    get '/'
    last_response.ok?.should be_true
  end

  pending "post tweet" do
    post '/tweet'
    last_response.ok?.should be_true
  end
end
