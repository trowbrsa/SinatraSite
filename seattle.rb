require 'csv'

module Activities

  class Seattle

    attr_reader :options

    def initialize(options)
      @options = options
    end

    def self.all
      activities = []
      CSV.foreach('./support/seattle_activities.csv') do |row|
        things = Seattle.new row[0].to_s
        activities.push(things)
      end
      return activities
    end
  end
end
