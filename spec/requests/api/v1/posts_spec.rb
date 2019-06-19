# frozen_string_literal: true

require 'rails_helper'

describe 'PostAPI' do
  it '全てのポストを取得する' do
    FactoryBot.create_list(:post,10)

    get '/api/v1/posts'
    json = JSON.parse(response.body)

    # Check 200 Response
    expect(response.status).to eq(200)

    # Check Correct number of data
    expect(json['data'].length).to eq(10)
  end
end

describe 'PostAPI' do
  it '特定のpostを取得する' do
    post = create(:post, title: 'test-title')

    get "/api/v1/posts/#{post.id}"
    json = JSON.parse(response.body)

    # Check 200 Response
    expect(response.status).to eq(200)

    # Check Correct number of data
    expect(json['data']['title']).to eq(post.title)
  end
end
