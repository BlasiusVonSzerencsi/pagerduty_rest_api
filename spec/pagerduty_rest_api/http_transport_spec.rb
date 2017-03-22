# frozen_string_literal: true

require 'spec_helper'

describe PagerdutyRestApi::HttpTransport do
  describe '#get' do
    let(:faraday) { instance_double(Faraday::Connection).as_null_object }

    before do
      allow(Faraday).to receive(:new).with(url: 'https://api.pagerduty.com')
        .and_yield(faraday)
        .and_return(faraday)
    end

    it 'should send a GET request to the given endpoint' do
      expect(faraday).to receive(:get).with('/some/endpoint')

      subject.get('/some/endpoint')
    end

    it 'should configure the REST client properly' do
      expect(faraday).to receive(:adapter).with(Faraday.default_adapter)

      subject.get('/some/endpoint')
    end
  end
end
