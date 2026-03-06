<?php
namespace App\Mail;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
class Subscribe extends Mailable
{
    use Queueable, SerializesModels;
    public $email;
    public $codigo;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($email, $codigo)
    {
        $this->email = $email;
        $this->codigo = $codigo;
    }
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Obrigado por estar conosco')
        ->markdown('emails.subscribers');
    }
}
