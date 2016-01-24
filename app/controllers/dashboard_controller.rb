class DashboardController < ApplicationController
  def home
    @videos = Video.all
    @histogram = LazyHighCharts::HighChart.new('column') do |f|
      @videos.each do |v|
        f.series(:name=>v.title, :data => [v.users.count])
      end
      f.title({ :text=>"Video Views"})
      f.legend({:enabled => false})
      f.tooltip({:formatter => 'function(){return this.series.name + ": " + this.y}'.js_code})
      f.options[:chart][:defaultSeriesType] = "column"
      f.options[:xAxis] = {:labels => {:enabled => false}}
      f.options[:yAxis][:title] = {:text=>"Views"}
    end
  end
end
