package Net::Stripe::Event;

use Moose;
use Kavorka;
extends 'Net::Stripe::Resource';

# ABSTRACT: represent an Event object from Stripe

has 'id'               => (is => 'ro', isa => 'Maybe[Str]');
has 'livemode'         => (is => 'ro', isa => 'Maybe[Bool|Object]');
has 'created'          => (is => 'ro', isa => 'Maybe[Int]');
has 'data'             => (is => 'ro', isa => 'Maybe[Any]');
has 'pending_webhooks' => (is => 'ro', isa => 'Maybe[Int]');
has 'type'             => (is => 'ro', isa => 'Maybe[Str]');
has 'api_version'      => (is => 'ro', isa => 'Maybe[Str]');
has 'request'          => (is => 'ro', isa => 'Maybe[Str]');
has 'email'            => (is => 'ro', isa => 'Maybe[Str]');

__PACKAGE__->meta->make_immutable;
1;
