<?php

namespace App\Mail;

use App\Models\Edital;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class EditalExpirandoMail extends Mailable
{
    use Queueable, SerializesModels;

    public function __construct(
        public Edital $edital,
        public int $diasRestantes
    ) {}

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: "⚠️ Edital expirando em {$this->diasRestantes} dia(s): {$this->edital->title}",
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'mail.edital-expirando',
        );
    }
}
