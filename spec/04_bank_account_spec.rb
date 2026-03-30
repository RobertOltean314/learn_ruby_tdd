# frozen_string_literal: true

# spec/13_bank_account_spec.rb

require 'problems/04_bank_account'

RSpec.describe BankAccount do
  it 'starts with initial balance' do
    acc = BankAccount.new(100)
    expect(acc.balance).to eq(100)
  end

  it 'deposits money' do
    acc = BankAccount.new(100)
    acc.deposit(50)
    expect(acc.balance).to eq(150)
  end

  it 'withdraws money if enough balance' do
    acc = BankAccount.new(100)
    acc.withdraw(30)
    expect(acc.balance).to eq(70)
  end

  it 'does not allow overdraft' do
    acc = BankAccount.new(100)
    acc.withdraw(200)
    expect(acc.balance).to eq(100)
  end

  # =========================
  # BONUS - WRITE MORE TESTS
  # =========================
  #
  # 1. Withdraw exact balance (balance should become 0)
  #
  # 2. Deposit negative amount:
  #    - Should raise ArgumentError?
  #
  # 3. Withdraw negative amount
  #
  # 4. Multiple operations sequence:
  #    deposit → withdraw → deposit
  #
  # 5. Test invalid initialization (e.g. negative balance)
  #
  it 'remains with balance 0' do
    acc = BankAccount.new(100)
    acc.withdraw(100)
    expect(acc.balance).to eq(0)
  end

  it 'fails if trying to deposit negative balance' do
    expect do
      BankAccount.new(100).deposit(-100)
    end.to raise_error(ArgumentError,
                       "The amount you\'re trying to deposit must be positive")
  end

  it 'fails if trying to withdraw negative amount' do
    expect do
      BankAccount.new(100).withdraw(-50)
    end.to raise_error(ArgumentError,
                       "The amount you\'re trying to withdraw must be positive")
  end
end
