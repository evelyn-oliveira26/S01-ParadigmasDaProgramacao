using System;
using System.Collections.Generic;

abstract class AbominacaoCosmica
{
    public string Nome;

    public AbominacaoCosmica(string nome)
    {
        Nome = nome;
    }

    public abstract void Manifestar();
}

class Shoggoth : AbominacaoCosmica
{
    public Shoggoth(string nome) : base(nome)
    { // todo método ou construtor precisa de um bloco 
    }

    public override void Manifestar()
    {
        Console.WriteLine(Nome + ": A massa de protoplasma se arrasta borbulhando, moldando órgãos e olhos conforme avança.");
    }
}

class CacadorAlado : AbominacaoCosmica
{
    public CacadorAlado(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        Console.WriteLine(Nome + ": A criatura bate suas asas membranosas, mergulhando do vazio estelar em um voo silencioso.");
    }
}

class Program
{
    static void Main()
    {
        List<AbominacaoCosmica> lista = new List<AbominacaoCosmica>();

        Shoggoth s = new Shoggoth("Shoggoth");
        CacadorAlado c = new CacadorAlado("Morte Alada");

        lista.Add(s);
        lista.Add(c);

        foreach (AbominacaoCosmica a in lista)
        {
            a.Manifestar();
        }
    }
}