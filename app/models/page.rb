class Page < ActiveRecord::Base
  before_save do |page|
    page.alias = page.title.parameterize
  end

  WORDS = %w(Alfa Bravo Charlie Delta Echo Foxtrot Golf Hotel India Juliett Kilo Lima Mike November Oscar Papa Quebec Romeo Sierra Tango Uniform Victor Whiskey X-ray Yankee Zulu)
  def self.generate(len=6)
    srand()
    WORDS.sample(Random.rand(len)).join(' ')
  end

  def self.create_default    
    create({
      title:   generate,
      content: generate(20)
    })
  end

  def to_param
    self.alias
  end
end
