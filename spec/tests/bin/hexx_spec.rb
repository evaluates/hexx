# encoding: utf-8
require "hexx-validators"
require "policy/cli"

describe "$ hexx", :sandbox do

  shared_examples "running scaffolder" do |generator|

    let!(:expected) do
      prepare_sandbox
      capture_stdout { try_in_sandbox { generator.start(arguments) } }
    end

    let!(:actual) do
      prepare_sandbox
      try_in_sandbox { return `#{ [:hexx, subject, arguments].join(" ") }` }
    end

    it "[starts the generator]" do
      expect(actual).to eq expected
    end

  end # shared_examples

  context "validator" do

    subject { :validator }

    it_behaves_like "running scaffolder", Hexx::Validators::Generator do
      let(:arguments) { %w(in_future -e not_in_future -o allow_nil) }
    end

  end # validator

  context "policy" do

    subject { :policy }

    it_behaves_like "running scaffolder", Policy::CLI do
      let(:arguments) { %w(consistency -a debet credit -l en fr) }
    end

  end # validator

end # describe $ hexx
