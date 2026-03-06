<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::create([
            'name'     => 'Paulo',
            'email'    => 'paulovinteeum@gmail.com',
            'password' => Hash::make('zenete2121'),
            'is_admin' => true, // false se quiser acesso limitado
        ]);
        $this->call(AdministradoresTableSeeder::class);
        $this->call(AgendamentosTableSeeder::class);
        $this->call(AjustesTableSeeder::class);
        $this->call(AndroidTableSeeder::class);
        $this->call(AppointmentsTableSeeder::class);
        $this->call(AreasTableSeeder::class);
        $this->call(BookingsTableSeeder::class);
        $this->call(CategoriesTableSeeder::class);
        $this->call(ClientsTableSeeder::class);
        $this->call(ConveniosTableSeeder::class);
        $this->call(CoresdosistemasTableSeeder::class);
        $this->call(DadoslinksTableSeeder::class);
        $this->call(DaysonsTableSeeder::class);
        $this->call(DisponibleDaysTableSeeder::class);
        $this->call(EmailTemplateTableSeeder::class);
        $this->call(EspecialidadesTableSeeder::class);
        $this->call(FeaturesTableSeeder::class);
        $this->call(FilesTableSeeder::class);
        $this->call(FinanceirosTableSeeder::class);
        $this->call(FolderTableSeeder::class);
        $this->call(FormTableSeeder::class);
        $this->call(FormFieldTableSeeder::class);
        $this->call(ListadeespecialidadesTableSeeder::class);
        $this->call(LogotipoeimagemsTableSeeder::class);
        $this->call(MealsTableSeeder::class);
        $this->call(MediaTableSeeder::class);
        $this->call(MedicosTableSeeder::class);
        $this->call(MenuRoleTableSeeder::class);
        $this->call(MenulistTableSeeder::class);
        $this->call(MenusTableSeeder::class);
        $this->call(ModelHasPermissionsTableSeeder::class);
        $this->call(ModelHasRolesTableSeeder::class);
        $this->call(NotesTableSeeder::class);
        $this->call(NotificationsTableSeeder::class);
        $this->call(OauthAccessTokensTableSeeder::class);
        $this->call(OauthAuthCodesTableSeeder::class);
        $this->call(OauthClientsTableSeeder::class);
        $this->call(OauthPersonalAccessClientsTableSeeder::class);
        $this->call(OauthRefreshTokensTableSeeder::class);
        $this->call(PeriodosTableSeeder::class);
        $this->call(PermissionsTableSeeder::class);
        $this->call(PlantonistasTableSeeder::class);
        $this->call(ProductItemsTableSeeder::class);
        $this->call(RoleHasPermissionsTableSeeder::class);
        $this->call(RoleHierarchyTableSeeder::class);
        $this->call(RolesTableSeeder::class);
        $this->call(SemanaisTableSeeder::class);
        $this->call(ServicosTableSeeder::class);
        $this->call(StatusTableSeeder::class);
        $this->call(SubcategoryTableSeeder::class);
        $this->call(SubscribersTableSeeder::class);
        $this->call(SubscriptionItemsTableSeeder::class);
        $this->call(SubscriptionsTableSeeder::class);
        $this->call(TimesTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(ValoreseservicosTableSeeder::class);
    }
}
