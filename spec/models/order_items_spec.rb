
require 'rails_helper'

describe OrderItem do
  it { should belong_to :nonprofit }
  it { should belong_to :order }
end
