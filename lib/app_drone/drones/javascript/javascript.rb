module AppDrone
class Javascript < Drone
  desc "Generates application.js.coffee with manifest options and jQuery load hooks"
  attr_accessor :pipeline_requires, :on_readies

  def setup
    self.pipeline_requires = []
    self.on_readies = []

    self.pipeline 'jquery'
    self.pipeline 'jquery_ujs'
  end

  def pipeline(r); self.pipeline_requires << r end
  def on_ready(r); self.on_readies << r end

  def execute
    do! :application_coffee
  end

end
end