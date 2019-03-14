class Sandwich

  attr_accessor :id, :title, :description

  def self.open_connection
    PG.connect(dbname: "sandwich")
  end

  #Index page - gets all the data
  def self.all
    conn = self.open_connection

    sql = "SELECT * FROM sandwich ORDER BY id"

    results = conn.exec(sql)

    sandwiches = results.map do |sandwich_data|
      self.hydrate sandwich_data
    end

    sandwiches
  end

  #Show and Edit - Find one piece of data
  def self.find sandwich_id
    conn = self.open_connection

    sql = "SELECT * FROM sandwich WHERE id = #{sandwich_id}"

    result = conn.exec(sql)

    sandwich = self.hydrate result[0]
  end

  #Save +  Update Data Entry
  def save
    conn = Sandwich.open_connection

    if self.id
      #Update
      sql = "UPDATE sandwich SET title='#{self.title}', description='#{self.description}' WHERE id=#{self.id}"
    else
      #Add
      sql= "INSERT INTO sandwich (title, description) VALUES ('#{self.title}','#{self.description}')"
    end


    conn.exec(sql)
  end

  # Delete Data Entry
  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM sandwich WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate sandwich_data
    sandwich = Sandwich.new

    sandwich.id = sandwich_data['id']
    sandwich.title = sandwich_data['title']
    sandwich.description = sandwich_data['description']

    sandwich
  end



end
