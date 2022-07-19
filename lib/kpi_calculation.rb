# frozen_string_literal: true

require_relative "kpi_calculation/version"

class KpiAggregateService
  def initialize(days, sales_data_object)
    @days = days
    @sales_data_object = sales_data_object
  end

  # 3. 1つのサービスにpublicなメソッドは、原則1つにする
  def call
    aggregate_kpi
  end

  private 

  attr_reader :days , :sales_data_object

  def aggregate_kpi
    keys = sales_data_object.keys
    values = sales_data_object.values
    counter = 0
    sums = values.map do
      sum = values[counter..values.length].sum
      counter = counter + 1
      sum
    end
    keys.map.with_index do |key, index|
      count = sums[index]
      average = sums[index].to_f / days.to_f
      unless index == 0
        percent =  sums[index].to_f / sums[index - 1].to_f * 100.to_f
      end
      {
        name: key,
        count: count,
        average: average&.floor(1),
        percent: percent&.floor(1),
      }
    end
    
  end
end

module KpiCalculation
  class Error < StandardError; end

  def self.call(days: days, sales_data_object: sales_data_object)
    kpi_aggregate_service = KpiAggregateService.new(days, sales_data_object)
    kpi = kpi_aggregate_service.call
  end

end



