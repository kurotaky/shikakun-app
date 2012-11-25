# coding: utf-8
require 'spec_helper'

describe 'shikakun.rb' do

  it "signinページが表示されること" do
    get '/'
    last_response.should be_successful
    last_response.body.should include("shikakunに参加する")
  end

  it "存在しないリソースにアクセスしたら、404鹿無しが表示されること" do
    get '/foo'
    last_response.body.should include("404鹿なし")
  end


  pending 'get exit' do
    get '/exit'
    last_response.should be_ok
  end

  pending 'shikakunに参加する' do
    post 'auth/twitter'
  end

  pending "post tweet" do
    post '/tweet'
    last_response.should_not be_successful
  end

end
