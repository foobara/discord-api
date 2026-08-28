RSpec.describe Foobara::DiscordApi::CreateMessage do
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }
  let(:errors) { outcome.errors }
  let(:errors_hash) { outcome.errors_hash }

  let(:inputs) do
    { channel_id: , content: }
  end

  let(:channel_id) { "1234567890" }
  let(:content) { "Hello, World!" }

  

  it "is successful", vcr:{ record: :once} do
    expect(outcome).to be_success
    expect(result).to eq("bar")
  end
end
