require 'spec_helper'
describe Clusterer do
  context 'For identical points' do
    before :context do
      @input = [ 0, 1, 2 ],[ 0, 1, 2 ]
    end

    it 'It sets two clusters (unclustered, one for the identical points)' do
      expect(DBSCAN( @input, :epsilon => 4, :min_points => 1, :distance => :euclidean_distance ).clusters.size).to eq(2)
    end

    it 'The Cluster for unclustered points is size 0' do
      expect(DBSCAN( @input, :epsilon => 4, :min_points => 1, :distance => :euclidean_distance ).clusters[-1].size).to eq(0)
    end

    it 'the Cluster 0 contains two points.' do
      expect(DBSCAN( @input, :epsilon => 4, :min_points => 1, :distance => :euclidean_distance ).clusters.size).to eq(2)
    end
  end
end