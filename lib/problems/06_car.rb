# frozen_string_literal: true

class Engine # rubocop:disable Style/Documentation
  attr_reader :status

  def initialize
    @state = :not_running
  end

  def start
    @state = :running
  end

  def stop
    @state = :not_running
  end

  def running?
    @state == :running
  end
end

class Car # rubocop:disable Style/Documentation
  attr_reader :engine

  def initialize
    @engine = Engine.new # Dependency Injection
  end

  def start
    @engine.start
  end

  def stop
    @engine.stop
  end
end
