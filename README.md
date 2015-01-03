[![Build Status](https://api.shippable.com/projects/54a7c83ad46935d5fbc1625b/badge?branchName=master)](https://app.shippable.com/projects/54a7c83ad46935d5fbc1625b/builds/latest)
[![Code Climate](https://codeclimate.com/github/kaspernj/validates_swift/badges/gpa.svg)](https://codeclimate.com/github/kaspernj/validates_swift)
[![Test Coverage](https://codeclimate.com/github/kaspernj/validates_swift/badges/coverage.svg)](https://codeclimate.com/github/kaspernj/validates_swift)

# ValidatesSwift

This project rocks and uses MIT-LICENSE.


## Installation

Add to Gemfile and bundle:
```ruby
gem "validates_swift"
```

## Usage

```ruby
class Account < ActiveRecord::Base
  validates :swift_string, swift: true
end
```
