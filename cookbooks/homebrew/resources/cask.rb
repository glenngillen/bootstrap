actions :cask
attribute :name,
  :name_attribute => true,
  :kind_of        => String,
  :regex          => /\w+/

attribute :casked,
  :kind_of => [TrueClass, FalseClass]

### hax for default action
def initialize( *args )
  super
  @action = :cask
end
