using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;


public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {
    }

    public DbSet<Cliente> Clientes { get; set; }
    public DbSet<Abogado> Abogados { get; set; }
    public DbSet<Estado> Estados { get; set; }
    public DbSet<Caso> Casos { get; set; }
    public DbSet<GestionCaso> gestionCasos { get; set; }

    public class Cliente
    {
        [Key]
        public string Cedula { get; set; } = "";
        public string Nombre { get; set; } = "";
        public string Apellido { get; set; } = "";
        public string Correo { get; set; } = "";
        public string Telefono { get; set; } = "";
        public string Celular { get; set; } = "";
        public string Direccion { get; set; } = "";
        public string EstadoCivil { get; set; } = "";
    }

    public class Abogado
    {
        [Key]
        public string Cedula { get; set; } = "";
        public string Nombre { get; set; } = "";
    }

    public class Estado
    {
        [Key]
        public string EstadoNombre { get; set; } = "";
    }

    public class Caso
    {
        [Key]
        public string EstadoCasos { get; set; } = "";
    }

    public class GestionCaso
    {
        [Key]
        public string CasoID { get; set; } = "";
        public string FechaDelCaso { get; set; } = "";
        public string Cliente { get; set; } = "";
        public string TipoDeCaso { get; set; } = "";
        public string UbicacionLatitud { get; set; }
        public string UbicacionLongitud { get; set; }
        public string DescripcionDelCaso { get; set; } = "";
        public string AbogadoAsignado { get; set; } = "";
        public string EstadoDelCaso { get; set; } = "";
    }
}