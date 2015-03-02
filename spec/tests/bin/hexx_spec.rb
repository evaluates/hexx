# encoding: utf-8
require "hexx-validators"

describe "$ hexx", :sandbox do

  shared_examples "specific scaffolder" do
    # subject command, its arguments and generator should be defined in context

    let!(:expected_output) do
      capture_stdout { try_in_sandbox { generator.start(arguments) } }
    end

    let!(:actual_output) do
      prepare_sandbox
      try_in_sandbox { return `#{ [:hexx, subject, arguments].join(" ") }` }
    end

    it "[starts the generator]" do
      expect(actual_output).to eq expected_output
    end
  end

  context "validator" do

    subject { :validator }

    it_behaves_like "specific scaffolder" do
      let(:arguments) { %w(in_future -e not_in_future -o allow_nil) }
      let(:generator) { Hexx::Validators::Generator }
    end

  end # validator

end # describe $ hexx
