module ForumApp

  class Forum
    def initialize(db = nil)
      @db = db
      if @db.nil?
        @db =  Mysql2::Client.new(host: "localhost", username: "root",
            password: "", database: "ruby")
      end
    end

    def title
      'moje forum'
    end

    def add_section(section_name, section_description)
      sect = ForumSection.new(@db)
      sect.name = section_name
      sect.description  = section_description
      p sect.description

      # added_section_array = []
      # added_section_array << sect.name
      sect.save
    end

  end

  class ForumSection
    attr_accessor :name, :headline, :topic_details

    def initialize(db)
      @db = db
    end

    def save
      @db.query("insert into forum_sections (name, headline, topic_details) values ('#{@name}',
                                                                        '#{@headline}',
                                                                        '#{@topic_details}')")
      true
    end
  end

  class ForumSectionTopic
    attr_accessor :forum_section_id, :title, :description

    def initialize(db)
      @db = db
    end

    def save
      @db.query("insert into forum_section_topics (forum_section_id, title, description) values ('#{@forum_section_id}',
                                                                        '#{@title}',
                                                                        '#{@description}')")
      true
    end
  end

end