Week 1 - Day 3

Instance variable can be used from Rspec file, if the method (in this case attr reader) that was called contains that instance variable

```
it 'checks of bike has been docked' do
  expect(subject.docked_bike).to eq @docked_bike
end
```
