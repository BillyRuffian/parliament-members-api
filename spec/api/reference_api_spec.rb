=begin
#Members API

#An API which retrieves Members data.

The version of the OpenAPI document: v1
Contact: softwareengineering@parliament.uk
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for ParliamentMembers::ReferenceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReferenceApi' do
  before do
    # run before each test
    @api_instance = ParliamentMembers::ReferenceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReferenceApi' do
    it 'should create an instance of ReferenceApi' do
      expect(@api_instance).to be_instance_of(ParliamentMembers::ReferenceApi)
    end
  end

  # unit tests for api_reference_answering_bodies_get
  # Returns a list of answering bodies.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :id 
  # @option opts [String] :name_contains 
  # @return [Array<AnsweringBody>]
  describe 'api_reference_answering_bodies_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_reference_departments_get
  # Returns a list of departments.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :id 
  # @option opts [String] :name_contains 
  # @return [Array<GovernmentDepartment>]
  describe 'api_reference_departments_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_reference_departments_id_logo_get
  # Returns department logo.
  # @param id Logo by department ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'api_reference_departments_id_logo_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_reference_policy_interests_get
  # Returns a list of policy interest.
  # @param [Hash] opts the optional parameters
  # @return [Array<GenericReferenceData>]
  describe 'api_reference_policy_interests_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
