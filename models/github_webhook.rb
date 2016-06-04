class GithubWebhook
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id
  field :user_id
  field :content
  field :sync_state, default: "TODO"
  field :sync_ts, type: DateTime
  
  validates_presence_of :id, :user_id, :content

  def self.sync
    loop do
      web_hook = WebHook.where(sync_state: "TODO").find_one_and_update({"$set" => {sync_state: "PROCESSING"}, "$currentDate" => {sync_ts: true}})
      break if web_hook.nil?
      #PayloadLoader.consume(web_hook.issue)
      #web_hook.set(sync_state: "DONE", sync_ts: DateTime.now)
    end
  end

  def consume
    
  end

end