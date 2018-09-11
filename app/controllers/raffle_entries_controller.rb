class RaffleEntriesController < ApplicationController

  def create
    raffle = RaffleEntry.new(first_name: params[:first_name], last_name: params[:last_name] ,email: params[:email] ,phone: params[:phone] ,exercise: params[:exercise] ,repetitions: params[:repetitions]  )
    raffle.save ? flash[:success] = "Raffle Entry Saved" : flash[:error] = "#{raffle.errors.full_messages.first}"
    redirect_to '/'
  end

  def new

  end

  def index
    @scores = RaffleEntry.where("created_at > ?", 1.days.ago.beginning_of_day).map {|n| n.repetitions.to_i}.sum
    @pushups = RaffleEntry.where(exercise: "Push-Ups").map {|n| n.repetitions.to_i}.sum
    @pullups = RaffleEntry.where(exercise: "Pull-Ups").map {|n| n.repetitions.to_i}.sum
    @crunches = RaffleEntry.where(exercise: "Crunches").map {|n| n.repetitions.to_i}.sum
    @lunges = RaffleEntry.where(exercise: "Lunges").map {|n| n.repetitions.to_i}.sum
    @squats = RaffleEntry.where(exercise: "Squats").map {|n| n.repetitions.to_i}.sum
  end

  def raffle_results
    @results = RaffleEntry.where(winner: true)
    render 'raffle_results.html.erb'
  end

  def draw
    draw = RaffleEntry.all.shuffle.sample(20)
    draw.map{|winner| winner.update(winner: true)}
    redirect_to '/results'
  end
end
