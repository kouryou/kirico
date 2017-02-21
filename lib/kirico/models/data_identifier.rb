# frozen_string_literal: true
require 'virtus'

module Kirico
  class DataIdentifier
    include Virtus.model

    IDENTIFIER = '[data]'

    def to_csv
      [IDENTIFIER].map { |attr| attr.to_s.encode('Shift_JIS') }.join(',')
    end
  end
end
