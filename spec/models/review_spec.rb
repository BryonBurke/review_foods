require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_length_of(:content_body).is_at_least(50) }
  it { should validate_length_of(:content_body).is_at_most(250) }
  it { should validate (:rating).greater_than_or_equal_to(1)}
  it { should validate (:rating).greater_than_or_equal_to(5)}
  end
