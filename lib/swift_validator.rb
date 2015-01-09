require_relative "swift-code-tool/lib/swift-code"

class SwiftValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    swift = SWIFTCodeTool::SWIFT.new(value.to_s)
    errors = swift.validation_errors(nil)

    unless errors.empty?
      object.errors[attribute] << (options[:message] || "is not a valid SWIFT code: #{errors.join(", ")}")
    end
  end
end
