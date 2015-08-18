module ForumApp

  class Forum
    attr_accessor :title

    def initialize(forum_title, db = nil)
      @db = db
      if @db.nil?
        @db =  Mysql2::Client.new(host: "localhost", username: "root",
            password: "", database: "ruby")
      end
      @title = forum_title
      @sections = []
    end

    def add_section(section_name, section_description)
      sect = ForumSection.new(@db)
      sect.name = section_name
      sect.headline  = section_description
      id = sect.save

      @sections << sect
      id
    end

    def list_sections
      @sections.map { |s| s.name }
    end

    def get_section(section_name)
      @sections.detect { |one_s| one_s.name == section_name }
    end

    def remove_section(section_name)
      @db.query("delete from forum_sections where name = '#{section_name}'")
      @sections.delete_if { |one_section| one_section.name == section_name}
    end
  end

  class ForumSection
    attr_accessor :name, :headline

    def initialize(db)
      @id = nil
      @db = db
      @topics = []
    end

    def save
      @db.query("insert into forum_sections (name, headline) values ('#{@name}',
                                                                     '#{@headline}')")
      @id = @db.last_id
    end

    def add_topic(topic_title, topic_description)
      topic = ForumSectionTopic.new(@db)
      topic.title = topic_title
      topic.description  = topic_description
      topic.forum_section_id = @id
      id = topic.save

      @topics << topic
      id
    end

    def details
      "Nazwa: '#{@name}' | Opis: '#{@headline}'"
    end

    def get_topic(topic_title)
      topic = @topics.detect { |one_topic| one_topic.title == topic_title }
      "Title: '#{topic.title}' | Opis: '#{topic.description}'"
    end

    def remove_topic(topic_title)
      @db.query("delete from forum_section_topics where title = '#{topic_title}'")
      @topics.delete_if { |one_topic| one_topic.title == topic_title}
    end

    def list_topics
      @topics.map { |one_topic| one_topic.title }
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
      @db.last_id
    end
  end
end