# coding: UTF-8

require_relative 'spec_helper'

describe 'Morse' do
  describe '#to_morse' do
    context 'valid chars' do
      it 'encodes EN string' do
        'Morse'.to_morse('en').should eq '-- --- .-. ... .'
      end

      it 'encodes RU string' do
        'Морзе'.to_morse('ru').should eq '-- --- .-. --.. .'
      end
    end

    context 'with bad chars' do
      it 'preserves bad chars if set to preserve' do
        'M&%#e'.to_morse('en').should eq '-- & % # .'
      end

      it 'removes bad chars if not set to preserve' do
        'M&%#e'.to_morse('en', true).should eq '--    .'
      end
    end
  end

  describe '#from_morse' do
    it 'decodes EN string' do
      '-- --- .-. ... .'.from_morse('en').should eq 'MORSE'
    end

    it 'decodes RU string' do
      '-- --- .-. --.. .'.from_morse('ru').should eq 'МОРЗЕ'
    end
  end



end
