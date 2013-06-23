require 'spec_helper'

describe Checklist do
  
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:user_id)}


end
